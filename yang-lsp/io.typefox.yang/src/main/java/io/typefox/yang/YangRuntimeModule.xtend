/*
 * generated by Xtext 2.13.0-SNAPSHOT
 */
package io.typefox.yang

import com.google.inject.Binder
import io.typefox.yang.documentation.DocumentationProvider
import io.typefox.yang.formatting2.YangIndentationInformation
import io.typefox.yang.resource.YangResource
import io.typefox.yang.scoping.QualifiedNameConverter
import io.typefox.yang.scoping.ResourceDescriptionStrategy
import io.typefox.yang.validation.IssueCodes
import io.typefox.yang.validation.ResourceValidator
import org.eclipse.xtext.documentation.IEObjectDocumentationProvider
import org.eclipse.xtext.formatting.IIndentationInformation
import org.eclipse.xtext.formatting2.FormatterRequest
import org.eclipse.xtext.naming.IQualifiedNameConverter
import org.eclipse.xtext.resource.IDefaultResourceDescriptionStrategy
import org.eclipse.xtext.util.ExceptionAcceptor
import org.eclipse.xtext.validation.ConfigurableIssueCodesProvider
import org.eclipse.xtext.validation.ResourceValidatorImpl
import org.eclipse.xtext.workspace.IProjectConfigProvider
import org.eclipse.xtext.workspace.ProjectConfigProvider
import org.eclipse.xtext.preferences.IPreferenceValuesProvider
import io.typefox.yang.settings.PreferenceValuesProvider

/**
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class YangRuntimeModule extends AbstractYangRuntimeModule {
    
    override configure(Binder binder) {
        super.configure(binder)
        binder.bind(FormatterRequest).toProvider[
            new FormatterRequest().exceptionHandler = ExceptionAcceptor.THROWING
        ]
    }

	def Class<? extends IDefaultResourceDescriptionStrategy> bindIDefaultResourceDescriptionStrategy() {
		ResourceDescriptionStrategy
	}

	override bindXtextResource() {
		YangResource
	}

	def Class<? extends ConfigurableIssueCodesProvider> bindConfigurableIssueCodes() {
		IssueCodes
	}

	def Class<? extends IQualifiedNameConverter> bindIQualifiedNameConverter() {
		QualifiedNameConverter
	}

	override bindIValueConverterService() {
		YangValueConverterService
	}

	def Class<? extends ResourceValidatorImpl> bindResourceValidatorImpl() {
		ResourceValidator
	}

	def Class<? extends IEObjectDocumentationProvider> bindIEObjectDocumentationProvider() {
		DocumentationProvider
	}
	
	def Class< ? extends IIndentationInformation> bindIIndentationInformation() {
		YangIndentationInformation;
	}
	
	def Class<? extends IProjectConfigProvider> bindProjectConfigPRovider() {
		ProjectConfigProvider
	}
	
	def Class<? extends IPreferenceValuesProvider> bindIPreferenceValuProvider() {
		PreferenceValuesProvider
	}

}
