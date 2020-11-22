## local_manifests

```<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <!-- 在中国，最好不要拉取更多没有意义的 repo（比如存储在 gitlab 的 GMS）-->
  <remove-project name="android_hardware_qcom-caf_common" />
  <remove-project name="android_hardware_qcom_audio" />
  <remove-project name="android_hardware_qcom_display" />
  <remove-project name="android_hardware_qcom_media" />
  <remove-project name="android_packages_apps_FMRadio" />
  <remove-project name="android_vendor_qcom_opensource_fm-commonsys" />
  <remove-project name="android_vendor_qcom_opensource_libfmjni" />
  <remove-project name="android_vendor_qcom_opensource_power" />
  <remove-project name="packages_apps_Updates" />
  <remove-project name="platform_vendor_gms" />
  <remove-project name="platform/packages/apps/Browser2" />

  <!-- 遵循 AOSP-11 Blobs 所使用的 HAL -->
  <project path="hardware/qcom-caf/msm8998/audio" name="android_hardware_qcom_audio" revision="lineage-18.0-caf-msm8998" remote="lineage" />
  <project path="hardware/qcom-caf/msm8998/display" name="AOSP-11/hardware_qcom-caf_display_msm8998" revision="11" remote="github" />
  <project path="hardware/qcom-caf/msm8998/media" name="android_hardware_qcom_media" revision="lineage-18.0-caf-msm8998" remote="lineage" />
  <project path="hardware/qcom-caf/common" name="android_hardware_qcom-caf_common" groups="qcom,pdk-qcom" remote="lineage" >
    <!-- add guard for AOSP hardware/qcom dir -->
    <linkfile src="os_pickup_aosp.mk" dest="hardware/qcom/Android.mk" />
    <!-- add guards for CAF repositories -->
    <linkfile src="os_pickup.bp" dest="hardware/qcom-caf/msm8998/Android.bp" />
    <linkfile src="os_pickup.mk" dest="hardware/qcom-caf/msm8998/Android.mk" />
  </project>
  <project path="packages/apps/Updates" name="cooluc/packages_apps_Updates" revision="elle" remote="github" />
  <project path="vendor/gapps" name="AOSP-11/vendor_gapps" revision="11" remote="github" />
</manifest>
```