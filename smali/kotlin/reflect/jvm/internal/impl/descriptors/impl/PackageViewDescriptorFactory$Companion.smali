.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;
.super Ljava/lang/Object;
.source "PackageViewDescriptorFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

.field public static final CAPABILITY:Lcom/google/android/play/core/internal/zzag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzag<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "PackageViewDescriptorFactory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->CAPABILITY:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
