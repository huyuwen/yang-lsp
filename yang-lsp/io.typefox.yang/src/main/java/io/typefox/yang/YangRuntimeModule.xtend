/*
 * generated by Xtext 2.13.0-SNAPSHOT
 */
package io.typefox.yang

import com.google.inject.Binder
import io.typefox.yang.documentation.DocumentationProvider
import io.typefox.yang.formatting2.YangIndentationInformation
import io.typefox.yang.formatting2.YangTextRegionAccessBuilder
import io.typefox.yang.resource.YangCrossReferenceSerializer
import io.typefox.yang.resource.YangResource
import io.typefox.yang.resource.YangSerializer
import io.typefox.yang.scoping.QualifiedNameConverter
import io.typefox.yang.scoping.ResourceDescriptionStrategy
import io.typefox.yang.scoping.YangResourceDescriptionManager
import io.typefox.yang.scoping.YangSerializerScopeProvider
import io.typefox.yang.settings.PreferenceValuesProvider
import io.typefox.yang.validation.IssueCodes
import io.typefox.yang.validation.LinkingErrorMessageProvider
import io.typefox.yang.validation.ResourceValidator
import io.typefox.yang.validation.YangIssueSeverityProvider
import org.eclipse.xtext.documentation.IEObjectDocumentationProvider
import org.eclipse.xtext.formatting.IIndentationInformation
import org.eclipse.xtext.formatting2.FormatterRequest
import org.eclipse.xtext.formatting2.regionaccess.TextRegionAccessBuilder
import org.eclipse.xtext.linking.impl.LinkingDiagnosticMessageProvider
import org.eclipse.xtext.naming.IQualifiedNameConverter
import org.eclipse.xtext.preferences.IPreferenceValuesProvider
import org.eclipse.xtext.resource.IDefaultResourceDescriptionStrategy
import org.eclipse.xtext.resource.impl.DefaultResourceDescriptionManager
import org.eclipse.xtext.scoping.IScopeProvider
import org.eclipse.xtext.serializer.tokens.CrossReferenceSerializer
import org.eclipse.xtext.serializer.tokens.SerializerScopeProviderBinding
import org.eclipse.xtext.util.ExceptionAcceptor
import org.eclipse.xtext.validation.IssueSeveritiesProvider
import org.eclipse.xtext.validation.ResourceValidatorImpl
import org.eclipse.xtext.workspace.IProjectConfigProvider
import org.eclipse.xtext.workspace.ProjectConfigProvider
import org.eclipse.xtext.validation.ConfigurableIssueCodesProvider
import org.eclipse.xtext.parsetree.reconstr.impl.TokenUtil
import io.typefox.yang.resource.YangTokenUtil

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

	override Class<? extends ConfigurableIssueCodesProvider> bindConfigurableIssueCodesProvider() {
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
	
	def Class<? extends TextRegionAccessBuilder> bindTextRegionAccessBuilder() {
	    YangTextRegionAccessBuilder
	}

	def Class<? extends IssueSeveritiesProvider> bindIssueSeveritiesProvider() {
		YangIssueSeverityProvider
	}
	
	def Class<? extends LinkingDiagnosticMessageProvider> bindLinkingDiagnosticMessageProvider() {
		LinkingErrorMessageProvider
	}
	
	def Class<? extends DefaultResourceDescriptionManager> bindDefaultResourceDescriptionManager() {
		YangResourceDescriptionManager
	}
	
	def Class<? extends CrossReferenceSerializer> bindCrossReferenceSerializer() {
		YangCrossReferenceSerializer
	}
	
	override configureSerializerIScopeProvider(Binder binder) {
		binder.bind(IScopeProvider).annotatedWith(SerializerScopeProviderBinding).to(YangSerializerScopeProvider)
	}
	
	override bindISerializer() {
		YangSerializer
	}
	
	def Class<? extends TokenUtil> bindTokenUtil() {
		YangTokenUtil
	}
}
