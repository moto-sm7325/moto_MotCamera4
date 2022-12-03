.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x1

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802c4

    const/4 v5, 0x0

    .line 5
    sget-object v6, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getTextResource()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mParentView.resources.getString(it.textResource)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07014e

    .line 13
    sget-object v6, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 15
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 16
    :goto_3
    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isEnabled:Z

    if-eqz v2, :cond_9

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const v4, 0x7f0802c3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f060318

    if-nez v2, :cond_6

    goto :goto_5

    .line 19
    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 20
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    :goto_5
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120460

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_a

    .line 23
    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    const v4, 0x7f0802c2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionIcon()Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f0603af

    if-nez v2, :cond_b

    goto :goto_8

    .line 27
    :cond_b
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 28
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    :goto_8
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v2, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12045f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    :goto_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->getSceneDetectionText()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_a
    return-void

    .line 31
    :goto_b
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    .line 32
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    .line 34
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->hideScenePill()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
