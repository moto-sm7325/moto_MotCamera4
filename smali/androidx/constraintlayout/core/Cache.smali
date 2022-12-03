.class public Landroidx/constraintlayout/core/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# instance fields
.field public arrayRowPool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SimplePool;"
        }
    .end annotation
.end field

.field public mIndexedVariables:Ljava/lang/Object;

.field public optimizedArrayRowPool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SimplePool;"
        }
    .end annotation
.end field

.field public solverVariablePool:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SimplePool;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x100

    invoke-direct {p1, v1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {p1, v1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {p1, v1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 15
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/16 v0, 0xa

    .line 16
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    .line 18
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/internal/zzcs;

    invoke-static {v1}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzcs;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzcq;->zzb(Lcom/google/android/play/core/internal/zzcs;)Lcom/google/android/play/core/internal/zzco;

    move-result-object p0

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzde;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzco;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/play/core/assetpacks/zzde;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/internal/zzco;)V

    return-object v3
.end method
