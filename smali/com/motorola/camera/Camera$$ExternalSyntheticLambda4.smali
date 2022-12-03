.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Camera;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Camera;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1
    iget-object p1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/DisplayFeature;

    .line 3
    instance-of v2, v1, Landroidx/window/layout/FoldingFeature;

    if-eqz v2, :cond_0

    .line 4
    move-object v0, v1

    check-cast v0, Landroidx/window/layout/FoldingFeature;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object p1

    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    :cond_3
    return-void
.end method
