.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014f

    .line 5
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f0802c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 11
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12045e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void

    .line 14
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
