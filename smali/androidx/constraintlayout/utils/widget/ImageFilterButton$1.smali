.class public final Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton$1;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 4
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->mRoundPercent:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float v5, p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
