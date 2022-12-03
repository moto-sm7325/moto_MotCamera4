.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;
.super Ljava/lang/Object;
.source "LaunchGalleryTask.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchGalleryTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchGalleryTask.kt\ncom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,282:1\n37#2:283\n36#2,3:284\n*S KotlinDebug\n*F\n+ 1 LaunchGalleryTask.kt\ncom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask\n*L\n219#1:283\n219#1:284,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

.field public static final mPhotosVersion:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/high16 v2, 0x20000

    .line 5
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isGooglePhotosSupportedInCli(Z)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    const-string v2, "/system/priv-app/MotCamera2/MotCamera2.apk"

    .line 3
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    const-wide/32 v3, 0x5f5e100

    .line 5
    rem-long/2addr v1, v3

    const-wide/32 v3, 0x42f47b9

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final isPhotosProcessingSupported()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static final isPhotosStabilizationSupported(Z)Z
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;

    const/4 v0, 0x3

    const/16 v1, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final setBrightnessForLaunch(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "activity.window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 3
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->getCurrentBrightness()F

    move-result p1

    .line 5
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "brightness"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static final start(Lcom/motorola/camera/ActivityStarter;Lcom/motorola/camera/CameraData;)V
    .locals 2

    const-string v0, "activityStarter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$1;-><init>(Lcom/motorola/camera/CameraData;Lcom/motorola/camera/ActivityStarter;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V
    .locals 3

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const-string/jumbo p2, "start_gallery_from_secure_camera"

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/motorola/camera/SecureDataHelper;->getInstance()Lcom/motorola/camera/SecureDataHelper;

    move-result-object p2

    .line 5
    iget-object v1, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p2, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object p2, p2, Lcom/motorola/camera/SecureDataHelper;->JSON_FORMAT:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "security_items"

    .line 9
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string p2, "com.google.android.apps.photos.api.secure_mode"

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p2

    .line 12
    iget-object v0, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 13
    :goto_1
    iget-object v1, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    .line 14
    iget-object v1, p2, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 15
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_4
    :goto_2
    return-void
.end method

.method public final getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "image/*"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video/*"

    :goto_0
    return-object p0
.end method

.method public final getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    :try_start_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "com.motorola.cn.gallery"

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.photos"

    :goto_0
    const/high16 v0, 0x100000

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LaunchGalleryTask"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getGalleryIntent(Lcom/motorola/camera/CameraData;)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 12

    .line 1
    sget-object v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->GALLERY:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    sget-boolean v1, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 2
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.REVIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getDataType(Lcom/motorola/camera/CameraData;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "processing_uri_intent_extra"

    .line 8
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    .line 12
    new-instance v4, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 13
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    .line 14
    invoke-direct {v4, v3, v2, v0, v5}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(Z)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 19
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;Z)V

    .line 21
    new-instance v4, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 22
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    .line 23
    invoke-direct {v4, v3, v2, v0, v5}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_9

    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 24
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.APP_GALLERY"

    .line 25
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 27
    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    const-string v8, "getInstance().packageMan\u2026ager.GET_RESOLVED_FILTER)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 29
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 30
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_3

    const-string v10, "info.activityInfo.packageName"

    .line 31
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-string v10, "com.motorola.cn.gallery"

    goto :goto_2

    :cond_4
    const-string v10, "com.google.android.apps.photos"

    :goto_2
    const/4 v11, 0x2

    invoke-static {v8, v10, v3, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 32
    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;Z)V

    goto :goto_3

    :cond_5
    move v9, v3

    :goto_3
    if-nez v9, :cond_7

    .line 33
    invoke-static {v5, v6}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string p0, "makeMainSelectorActivity\u2026ent.CATEGORY_APP_GALLERY)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_6
    new-instance v4, Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v4, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    :cond_7
    :goto_4
    new-instance p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-nez p1, :cond_8

    goto :goto_5

    .line 36
    :cond_8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v3

    .line 37
    :goto_5
    invoke-direct {p0, v4, v2, v0, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    move-object v4, p0

    :cond_9
    return-object v4
.end method

.method public final isPhotosVersionSupported(II)Z
    .locals 3

    .line 1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-gt v1, p1, :cond_0

    .line 2
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    .line 3
    aget p0, p0, v2

    if-lt p0, p2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public final setGalleryPackage(Landroid/content/Intent;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.motorola.cn.gallery"

    const-string v0, "com.motorola.cn.gallery.app.GalleryActivity"

    invoke-direct {p0, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string/jumbo p2, "start_gallery_from_camera"

    .line 3
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.apps.photos"

    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-void
.end method
