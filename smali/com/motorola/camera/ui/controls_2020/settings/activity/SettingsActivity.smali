.class public final Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.kt"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.28.84_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final hideToastRunnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final inactivityRunnable:Ljava/lang/Runnable;

.field public location:Lcom/motorola/camera/LocationManager;

.field public mIsSecure:Z

.field public final mSecureScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field public final mainHandler:Landroid/os/Handler;

.field public settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

.field public final toastNotifier:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    sget v0, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 3
    sget v0, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4
    sput v1, Landroidx/appcompat/app/AppCompatDelegate;->sDefaultNightMode:I

    .line 5
    sget-object v0, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegatesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/AppCompatDelegate;->sActivityDelegates:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegate;->applyDayNight()Z

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isSecureLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mIsSecure:Z

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$hideToastRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$hideToastRunnable$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Lkotlin/jvm/functions/Function0;

    .line 13
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$mSecureScreenOffReceiver$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$mSecureScreenOffReceiver$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    .line 3
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 5
    iget-boolean v1, p3, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/motorola/camera/PermissionsManager;->shouldAskOptionalPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget-object v3, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 8
    invoke-virtual {p0, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-nez v7, :cond_2

    .line 9
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p3, p0, v1, v0}, Lcom/motorola/camera/PermissionsManager;->callRequestPermission(Landroid/app/Activity;Ljava/util/ArrayList;I)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->updateLocationSetting()V

    .line 12
    :cond_4
    invoke-static {}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->values()[Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    move-result-object p0

    .line 13
    aget-object p0, p0, p1

    .line 14
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 15
    iput-object p0, p1, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    .line 16
    iput p2, p1, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 4
    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/camera/settings/SettingsManager;->mLanguageTag:Ljava/lang/String;

    .line 6
    iget-object v0, v1, Lcom/motorola/camera/settings/SettingsManager;->mPhotoSizeSummaryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    .line 8
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-static {v3, v1}, Lcom/motorola/camera/settings/SettingsManager;->setupSizeToSummaryMapValues(Ljava/util/List;Lcom/motorola/camera/settings/CameraType;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mPictureSizeSettingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 14
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    .line 15
    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager;->mPhotoSizeSummaryMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 19
    iget-object v6, v3, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    iget-object v6, v3, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120210

    .line 25
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    iget-object v5, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120211

    .line 28
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    iget-object v5, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120212

    .line 31
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValueToSummaryMap:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 35
    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    .line 36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isSecureLaunch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mIsSecure:Z

    .line 37
    invoke-static {p0, p1}, Landroidx/core/view/MotionEventCompat;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 38
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mIsSecure:Z

    if-eqz p1, :cond_6

    .line 39
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 41
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 44
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    const p1, 0x7f0d00e3

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 48
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 50
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v0, 0x7f0a02e2

    .line 51
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()I

    .line 53
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    .line 54
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->shouldSkipUpdatePreference:Z

    const p1, 0x7f0a01e9

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 58
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 59
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 60
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 61
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 62
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    .line 63
    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 5
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 6
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 7
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->toastNotifier:Lcom/motorola/camera/Notifier$Listener;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mSecureScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 4
    iget-object v2, p2, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p0, v2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string/jumbo v1, "supportFragmentManager.f\u2026assLoader, pref.fragment)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 8
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const p2, 0x7f0a02e2

    .line 9
    invoke-virtual {p1, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p0, 0x0

    .line 10
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()I

    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p0, v0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V

    .line 5
    invoke-virtual {p2, p1, p0}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(ILandroid/app/Activity;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->updateLocationSetting()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v0, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;)V

    .line 6
    new-instance v0, Lcom/motorola/camera/LocationManager;

    invoke-direct {v0}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->location:Lcom/motorola/camera/LocationManager;

    .line 7
    invoke-virtual {v0, p0}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->restartInactivityTimeout()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mIsSecure:Z

    invoke-static {p0, v0}, Landroidx/core/view/MotionEventCompat;->showOnLockScreen(Landroid/app/Activity;Z)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->registerSettingsBridge(Z)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->location:Lcom/motorola/camera/LocationManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/motorola/camera/LocationManager;->stopLocationUpdates(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->restartInactivityTimeout()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public final registerSettingsBridge(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/Job;

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/Job;

    .line 4
    :cond_1
    :goto_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 9
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->settingsManagerBridge:Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    if-nez p0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/Job;

    .line 12
    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;I)V

    .line 14
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/List;

    monitor-enter p1

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$stop$1$1;

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$stop$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p1

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final restartInactivityTimeout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->inactivityRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setHeaderTitle(I)V
    .locals 1

    const v0, 0x7f0a01e8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a01eb

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0a03f6

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f08008a

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a03f8

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f130336

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060032

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a03f5

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->hideToastRunnable:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateLocationSetting()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/motorola/camera/LocationManager;->isPermissionGranted(Landroid/app/Activity;)Z

    move-result v1

    .line 3
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    if-nez v1, :cond_1

    .line 6
    new-instance v0, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
