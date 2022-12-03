.class public final Lcom/motorola/camera/provider/photos/PhotosPreloader;
.super Ljava/lang/Object;
.source "PhotosPreloader.kt"


# static fields
.field public static final GALLERY_AUTHORITY_URI:Landroid/net/Uri;

.field public static final PHOTOS_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public isServiceBound:Z

.field public final serviceConnection:Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.motorola.cn.gallery.provider.galleryprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.google.android.apps.photos.partnercontentprovider"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    invoke-direct {v0}, Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->serviceConnection:Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    return-void
.end method


# virtual methods
.method public final preloadPhotosApp(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.resources.getStr\u2026ray.trusted_certificates)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/provider/photos/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 5
    sget-boolean v0, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 6
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.motorola.cn.gallery.provider.galleryprovider"

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.apps.photos.partnercontentprovider"

    .line 7
    :goto_0
    iget-object v2, v1, Lcom/motorola/camera/provider/photos/TrustedPartners;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    const/4 v4, 0x5

    if-nez v2, :cond_2

    const-string v1, "TrustedPartners"

    .line 8
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no provider found for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; do not trust"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, v3

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/provider/photos/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_a

    const-string v0, "isSupported"

    const-string v1, "PhotosPreloader"

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosPreloader;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosPreloader;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    :goto_2
    const-string v6, "getVersion"

    const/4 v7, 0x0

    .line 14
    invoke-virtual {v2, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    const-string/jumbo v5, "version"

    .line 15
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    .line 16
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v2

    .line 17
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    if-nez v3, :cond_7

    const-string p0, "PhotosPreloader"

    const-string p1, "Content resolver return not supported version. Content uri: "

    .line 18
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    .line 21
    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Minimum valid version: 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 23
    :cond_7
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    monitor-enter p0

    .line 25
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->isServiceBound:Z

    if-eqz v0, :cond_8

    const-string p1, "PhotosPreloader"

    const-string v0, "Skipping attempt to connect to already connected service."

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    goto :goto_7

    .line 28
    :cond_8
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.photos"

    const-string v2, "com.google.android.apps.photos.cameraassistant.CameraAssistantService"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    iget-object v1, p0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->serviceConnection:Lcom/motorola/camera/provider/photos/PhotosPreloader$serviceConnection$1;

    invoke-virtual {p1, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/provider/photos/PhotosPreloader;->isServiceBound:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p1

    :try_start_4
    const-string v0, "PhotosPreloader"

    const-string v1, "Unable to connect to assistant service"

    .line 31
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    :goto_6
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_9
    :goto_7
    return-void

    .line 33
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " is not authorized to access the content"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
