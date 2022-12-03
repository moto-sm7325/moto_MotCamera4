.class public Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;
.super Ljava/lang/Object;
.source "ModeSliderComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmptySpaceTap(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Landroid/graphics/PointF;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p1, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 6
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 9
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 10
    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 11
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v1, v0

    sub-float v0, v2, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 14
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 15
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    .line 16
    iget p1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p1, v3

    if-lez p2, :cond_1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p2, v0

    add-float/2addr p2, v3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 17
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEmptySpaceTouched(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 4
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_0
    return-void
.end method

.method public onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    return-void
.end method

.method public onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress(Z)V

    :cond_0
    return-void
.end method

.method public onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p0, :cond_0

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setPress(Z)V

    :cond_0
    return-void
.end method
