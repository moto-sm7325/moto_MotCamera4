.class public Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "ModeMenuComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModesDragBehavior"
.end annotation


# instance fields
.field public mOffsetX:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->mOffsetX:I

    return-void
.end method


# virtual methods
.method public drag(Landroid/os/Bundle;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onDragApplyValue(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->mOffsetX:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->mOffsetX:I

    return-void
.end method

.method public onDragStart(Landroid/graphics/PointF;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->mOffsetX:I

    return-void
.end method
