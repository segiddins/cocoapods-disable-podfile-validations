# frozen_string_literal: true

module CocoaPodsDisablePodfileValidations
  module PodfileValidatorMixin
    def cocoapods_disable_podfile_validations_options
      podfile.plugins.fetch('cocoapods-disable-podfile-validations', {})
    end

    validator_class = ::Pod::Installer::PodfileValidator
    methods_to_override = validator_class.instance_methods +
                          validator_class.private_instance_methods
    methods_to_override.each do |method_name|
      next unless method_name.to_s =~ /^validate_(.+?)[!?]?$/

      name = Regexp.last_match(1)

      define_method(method_name) do |*args, &blk|
        unless cocoapods_disable_podfile_validations_options[name]
          super(*args, &blk)
        end
      end
    end
  end
end

module Pod
  class Installer
    class PodfileValidator
      prepend ::CocoaPodsDisablePodfileValidations::PodfileValidatorMixin
    end
  end
end
