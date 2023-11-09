.class public final Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$Client;
.implements Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    return-void
.end method


# virtual methods
.method public final connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 p0, 0x0

    throw p0
.end method

.method public final disconnect(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 p0, 0x0

    throw p0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public final getEndpointPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 p0, 0x0

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    throw p0
.end method

.method public final getLastDisconnectMessage()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMinApkVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 p0, 0x0

    throw p0
.end method

.method public final isConnecting()Z
    .locals 0

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public final onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final requiresGooglePlayServices()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final requiresSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
