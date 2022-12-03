.class public final Lcom/google/android/play/core/appupdate/zzr;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Lcom/google/android/play/core/appupdate/zzq;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/appupdate/zzs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    check-cast p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;

    invoke-direct {v1, v0, p0}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;)V

    return-object v1
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/appupdate/zzj;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/zzj;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/android/play/core/appupdate/zzq;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzs;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzs;)V

    return-object v1
.end method
