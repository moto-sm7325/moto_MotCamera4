.class public final Lkotlin/jvm/internal/ArrayIteratorKt;
.super Ljava/lang/Object;
.source "ArrayIterator.kt"


# direct methods
.method public static final access$errorMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "ClassicTypeCheckerContext couldn\'t handle "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createLayoutManager(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    new-instance p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;-><init>()V

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 2
    new-instance p0, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/DesktopLayoutManager;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    :goto_0
    move-object p0, p2

    :goto_1
    return-object p0
.end method

.method public static final iterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
