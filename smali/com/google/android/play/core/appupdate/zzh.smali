.class public final Lcom/google/android/play/core/appupdate/zzh;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->cleanUp()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzh;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbh;->zze:Lcom/google/android/play/core/assetpacks/zzed;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzO()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/zzbh;->zzH(Ljava/io/File;Z)J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzQ(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
