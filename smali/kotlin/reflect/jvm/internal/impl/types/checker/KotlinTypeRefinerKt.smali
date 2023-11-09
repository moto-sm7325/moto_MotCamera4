.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt;
.super Ljava/lang/Object;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinTypeRefiner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypeRefiner.kt\norg/jetbrains/kotlin/types/checker/KotlinTypeRefinerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1547#2:83\n1618#2,3:84\n*S KotlinDebug\n*F\n+ 1 KotlinTypeRefiner.kt\norg/jetbrains/kotlin/types/checker/KotlinTypeRefinerKt\n*L\n76#1:83\n76#1:84,3\n*E\n"
.end annotation


# static fields
.field public static final REFINER_CAPABILITY:Lcom/google/android/play/core/internal/zzag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzag<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/Ref<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "KotlinTypeRefiner"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt;->REFINER_CAPABILITY:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method
