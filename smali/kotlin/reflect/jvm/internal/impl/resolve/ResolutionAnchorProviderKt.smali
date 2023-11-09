.class public final Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;
.super Ljava/lang/Object;
.source "ResolutionAnchorProvider.kt"


# static fields
.field public static final RESOLUTION_ANCHOR_PROVIDER_CAPABILITY:Lcom/google/android/play/core/internal/zzag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzag<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "ResolutionAnchorProvider"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;->RESOLUTION_ANCHOR_PROVIDER_CAPABILITY:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method
