#!/usr/bin/env bash

# This script was generated by copying recommended commands from the Matomo web ui
# The way this should be done would be matomo-console diagnostics:unexpected-files,
# however, this seems to be broken in the current release.
files=(\
  "/var/lib/matomo/share/core/Tracker/TableLogAction/Cache.php"\
  "/var/lib/matomo/share/plugins/Contents/DataArray.php"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/ArchivingSettings/ArchivingSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/BrandingSettings/BrandingSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/ImageTrackingCodeGenerator/ImageTrackingCodeGenerator.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/JsTrackingCodeGenerator/JsTrackingCodeGenerator.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/SmtpSettings/SmtpSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreAdminHome/vue/src/TrackingFailures/TrackingFailures.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreConsole/Commands/GenerateAngularConstructBase.php"\
  "/var/lib/matomo/share/plugins/CoreHome/javascripts/noreferrer.js"\
  "/var/lib/matomo/share/plugins/CoreHome/javascripts/zen-mode.js"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ActivityIndicator/ActivityIndicator.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/AjaxForm/AjaxForm.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Alert/Alert.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Comparisons/Comparisons.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ContentBlock/ContentBlock.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ContentIntro/ContentIntro.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ContentTable/ContentTable.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/CopyToClipboard/CopyToClipboard.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/DatePicker/DatePicker.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/DateRangePicker/DateRangePicker.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/DropdownButton/DropdownButton.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/DropdownMenu/DropdownMenu.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/EnrichedHeadline/EnrichedHeadline.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ExpandOnClick/ExpandOnClick.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ExpandOnHover/ExpandOnHover.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/FieldArray/FieldArray.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/FocusAnywhereButHere/FocusAnywhereButHere.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/FocusIf/FocusIf.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Matomo/Matomo.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/MatomoDialog/MatomoDialog.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/MatomoUrl/MatomoUrl.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/MenuItemsDropdown/MenuItemsDropdown.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/MultiPairField/MultiPairField.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Notification/Notification.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Notification/Notifications.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/PeriodDatePicker/PeriodDatePicker.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/PeriodSelector/PeriodSelector.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Periods/Periods.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Progressbar/Progressbar.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/QuickAccess/QuickAccess.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportExport/ReportExport.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportMetadata/ReportMetadata.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportingMenu/ReportingMenu.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportingMenu/ReportingMenu.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportingPage/ReportingPage.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportingPage/ReportingPage.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ReportingPages/ReportingPages.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/SelectOnFocus/SelectOnFocus.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ShowHelpLink/ShowHelpLink.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/ShowSensitiveData/ShowSensitiveData.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/SideNav/SideNav.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/SiteSelector/SiteSelector.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/SiteSelector/SitesStore.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Sparkline/Sparkline.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/Widget/Widget.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/WidgetByDimensionContainer/WidgetByDimensionContainer.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/WidgetContainer/WidgetContainer.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/WidgetLoader/WidgetLoader.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreHome/vue/src/createAngularJsAdapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/templates/macros.twig"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/Field/Field.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/Form/Form.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/FormField/FieldAngularJsTemplate.vue"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/FormField/FormField.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/PluginSettings/PluginSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/Plugins/PluginFilter.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/Plugins/PluginManagement.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/Plugins/PluginUpload.adapter.ts"\
  "/var/lib/matomo/share/plugins/CorePluginsAdmin/vue/src/SaveButton/SaveButton.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreVisualizations/vue/src/SeriesPicker/SeriesPicker.adapter.ts"\
  "/var/lib/matomo/share/plugins/CoreVisualizations/vue/src/SingleMetricView/SingleMetricView.adapter.ts"\
  "/var/lib/matomo/share/plugins/CustomDimensions/DataArray.php"\
  "/var/lib/matomo/share/plugins/CustomDimensions/vue/src/Edit/Edit.adapter.ts"\
  "/var/lib/matomo/share/plugins/CustomDimensions/vue/src/List/List.adapter.ts"\
  "/var/lib/matomo/share/plugins/CustomDimensions/vue/src/Manage/Manage.adapter.ts"\
  "/var/lib/matomo/share/plugins/Dashboard/DashboardManagerControl.php"\
  "/var/lib/matomo/share/plugins/Dashboard/DashboardSettingsControlBase.php"\
  "/var/lib/matomo/share/plugins/Dashboard/templates/_dashboardSettings.twig"\
  "/var/lib/matomo/share/plugins/Dashboard/vue/src/Dashboard/Dashboard.adapter.ts"\
  "/var/lib/matomo/share/plugins/Dashboard/vue/src/Dashboard/Dashboard.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/Ecommerce/templates/products.twig"\
  "/var/lib/matomo/share/plugins/Ecommerce/templates/sales.twig"\
  "/var/lib/matomo/share/plugins/Feedback/vue/src/FeedbackQuestion/FeedbackQuestion.adapter.ts"\
  "/var/lib/matomo/share/plugins/Feedback/vue/src/RateFeature/RateFeature.adapter.ts"\
  "/var/lib/matomo/share/plugins/GeoIp2/templates/_updaterManage.twig"\
  "/var/lib/matomo/share/plugins/GeoIp2/vue/src/Geoip2Updater/Geoip2Updater.adapter.ts"\
  "/var/lib/matomo/share/plugins/GeoIp2/vue/src/Geoip2Updater/Geoip2Updater.vue"\
  "/var/lib/matomo/share/plugins/Goals/vue/src/GoalPageLink/GoalPageLink.adapter.ts"\
  "/var/lib/matomo/share/plugins/Goals/vue/src/ManageGoals/ManageGoals.adapter.ts"\
  "/var/lib/matomo/share/plugins/Goals/vue/src/ManageGoals/PiwikApiMock.ts"\
  "/var/lib/matomo/share/plugins/Installation/FormDatabaseSetup.php.orig"\
  "/var/lib/matomo/share/plugins/Installation/templates/_systemCheckLegend.twig"\
  "/var/lib/matomo/share/plugins/LanguagesManager/vue/src/LanguageSelector/LanguageSelector.adapter.ts"\
  "/var/lib/matomo/share/plugins/LanguagesManager/vue/src/TranslationSearch/TranslationSearch.adapter.ts"\
  "/var/lib/matomo/share/plugins/Live/vue/src/LiveWidget/LiveWidgetRefresh.adapter.ts"\
  "/var/lib/matomo/share/plugins/Marketplace/Input/Mode.php"\
  "/var/lib/matomo/share/plugins/Marketplace/templates/licenseform.twig"\
  "/var/lib/matomo/share/plugins/Marketplace/templates/plugin-list.twig"\
  "/var/lib/matomo/share/plugins/Marketplace/templates/uploadPluginDialog.twig"\
  "/var/lib/matomo/share/plugins/Marketplace/vue/src/LicenseKey/DefaultLicenseKeyFields.vue"\
  "/var/lib/matomo/share/plugins/Marketplace/vue/src/LicenseKey/LicenseKey.vue"\
  "/var/lib/matomo/share/plugins/Marketplace/vue/src/PluginName/PluginName.adapter.ts"\
  "/var/lib/matomo/share/plugins/Marketplace/vue/src/PluginName/PluginName.ts"\
  "/var/lib/matomo/share/plugins/MobileMessaging/templates/credentials.twig"\
  "/var/lib/matomo/share/plugins/MobileMessaging/templates/macros.twig"\
  "/var/lib/matomo/share/plugins/MobileMessaging/vue/src/SelectPhoneNumbers/SelectPhoneNumbers.adapter.ts"\
  "/var/lib/matomo/share/plugins/MobileMessaging/vue/src/SmsProviderCredentials/SmsProviderCredentials.adapter.ts"\
  "/var/lib/matomo/share/plugins/Morpheus/icons/dist/searchEngines/search.start.fyi.png"\
  "/var/lib/matomo/share/plugins/Morpheus/stylesheets/base/font.css"\
  "/var/lib/matomo/share/plugins/MultiSites/vue/src/Dashboard/Dashboard.adapter.ts"\
  "/var/lib/matomo/share/plugins/MultiSites/vue/src/MultisitesSite/MultisitesSite.adapter.ts"\
  "/var/lib/matomo/share/plugins/PrivacyManager/vue/src/AnonymizeLogData/AnonymizeLogData.adapter.ts"\
  "/var/lib/matomo/share/plugins/PrivacyManager/vue/src/ManageGdpr/ManageGdpr.adapter.ts"\
  "/var/lib/matomo/share/plugins/PrivacyManager/vue/src/OptOutCustomizer/OptOutCustomizer.adapter.ts"\
  "/var/lib/matomo/share/plugins/Referrers/vue/src/CampaignBuilder/CampaignBuilder.adapter.ts"\
  "/var/lib/matomo/share/plugins/SegmentEditor/images/segment-move.png"\
  "/var/lib/matomo/share/plugins/SegmentEditor/vue/src/SegmentGenerator/SegmentGenerator.adapter.ts"\
  "/var/lib/matomo/share/plugins/SitesManager/GtmSiteTypeGuesser.php"\
  "/var/lib/matomo/share/plugins/SitesManager/images/cloudflare-icon.png"\
  "/var/lib/matomo/share/plugins/SitesManager/images/google-tag-manager-icon.png"\
  "/var/lib/matomo/share/plugins/SitesManager/images/react-icon.png"\
  "/var/lib/matomo/share/plugins/SitesManager/images/vue-icon.png"\
  "/var/lib/matomo/share/plugins/SitesManager/images/wordpress-icon.png"\
  "/var/lib/matomo/share/plugins/SitesManager/templates/_siteWithoutDataTabs.twig"\
  "/var/lib/matomo/share/plugins/SitesManager/templates/_spa.twig"\
  "/var/lib/matomo/share/plugins/SitesManager/vue/src/ManageGlobalSettings/ManageGlobalSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/SitesManager/vue/src/SiteTypesStore/SiteTypesStore.adapter.ts"\
  "/var/lib/matomo/share/plugins/SitesManager/vue/src/SitesManagement/SitesManagement.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Container/ContainerEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Container/ContainerList.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Container/ContainerManage.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/ContainerDashboard/ContainerDashboard.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/ContainerSelector/ContainerSelector.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/ImportVersion/ImportVersion.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/ManageInstallTagCode/ManageInstallTagCode.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Tag/TagEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Tag/TagList.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Tag/TagManage.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/TagmanagerTrackingCode/TagmanagerTrackingCode.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/TagmanagerTrackingCode/TagmanagerTrackingCode.vue"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Trigger/TriggerEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Trigger/TriggerList.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Trigger/TriggerManage.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Trigger/Triggers.store.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Variable/VariableEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Variable/VariableList.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Variable/VariableManage.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/VariableSelect/VariableSelect.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/VariableSelectType/VariableSelectType.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Version/VersionEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Version/VersionList.adapter.ts"\
  "/var/lib/matomo/share/plugins/TagManager/vue/src/Version/VersionManage.adapter.ts"\
  "/var/lib/matomo/share/plugins/Tour/Engagement/ChallengeAddedUser.php"\
  "/var/lib/matomo/share/plugins/Transitions/vue/src/TransitionExporter/TransitionExporter.adapter.ts"\
  "/var/lib/matomo/share/plugins/TwoFactorAuth/javascripts/twofactorauth.js"\
  "/var/lib/matomo/share/plugins/TwoFactorAuth/templates/_setupTwoFactorAuth.twig"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/AnonymousSettings/AnonymousSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/CapabilitiesEdit/CapabilitiesEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/CapabilitiesStore/CapabilitiesStore.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/NewsletterSettings/NewsletterSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/PagedUsersList/PagedUsersList.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/PersonalSettings/PersonalSettings.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/UserEditForm/UserEditForm.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/UserPermissionsEdit/UserPermissionsEdit.adapter.ts"\
  "/var/lib/matomo/share/plugins/UsersManager/vue/src/UsersManager/UsersManager.adapter.ts"\
  "/var/lib/matomo/share/plugins/VisitsSummary/templates/index.twig"\
  "/var/lib/matomo/share/plugins/Widgetize/vue/src/WidgetPreview/WidgetPreview.adapter.ts"\
  "/var/lib/matomo/share/vendor/pear/pear-core-minimal/src/PEAR/Error.php"\
  "/var/lib/matomo/share/node_modules/angular-animate/LICENSE.md"\
  "/var/lib/matomo/share/node_modules/angular-animate/README.md"\
  "/var/lib/matomo/share/node_modules/angular-animate/angular-animate.min.js"\
  "/var/lib/matomo/share/node_modules/angular-animate/index.js"\
  "/var/lib/matomo/share/node_modules/angular-cookies/LICENSE.md"\
  "/var/lib/matomo/share/node_modules/angular-cookies/README.md"\
  "/var/lib/matomo/share/node_modules/angular-cookies/angular-cookies.min.js"\
  "/var/lib/matomo/share/node_modules/angular-cookies/index.js"\
  "/var/lib/matomo/share/node_modules/angular-mocks/LICENSE.md"\
  "/var/lib/matomo/share/node_modules/angular-mocks/README.md"\
  "/var/lib/matomo/share/node_modules/angular-mocks/angular-mocks.js"\
  "/var/lib/matomo/share/node_modules/angular-mocks/ngAnimateMock.js"\
  "/var/lib/matomo/share/node_modules/angular-mocks/ngMock.js"\
  "/var/lib/matomo/share/node_modules/angular-mocks/ngMockE2E.js"\
  "/var/lib/matomo/share/node_modules/angular-sanitize/LICENSE.md"\
  "/var/lib/matomo/share/node_modules/angular-sanitize/README.md"\
  "/var/lib/matomo/share/node_modules/angular-sanitize/angular-sanitize.min.js"\
  "/var/lib/matomo/share/node_modules/angular-sanitize/index.js"\
)

for file in "''${files[@]}";do
  if [ -f "$file" ]; then
    rm -v "$file"
  fi
done

directories=(\
  "/var/lib/matomo/share/node_modules/angular"\
  "/var/lib/matomo/share/node_modules/jquery.browser"\
  "/var/lib/matomo/share/node_modules/jquery.dotdotdot"\
  "/var/lib/matomo/share/node_modules/materialize-css"\
  "/var/lib/matomo/share/node_modules/ng-dialog"\
  "/var/lib/matomo/share/plugins/CoreHome/angularjs"\
  "/var/lib/matomo/share/plugins/MultiSites/angularjs"\
  "/var/lib/matomo/share/plugins/SegmentEditor/angularjs"\
  "/var/lib/matomo/share/plugins/TagManager/angularjs"\
  "/var/lib/matomo/share/vendor/symfony/console/Symfony"\
  "/var/lib/matomo/share/vendor/symfony/event-dispatcher/Symfony"\
  "/var/lib/matomo/share/vendor/symfony/monolog-bridge/Symfony"\
)

for dir in "''${directories[@]}";do
  if [ -d "$dir" ]; then
    rm -Rvf "$dir"
  fi
done