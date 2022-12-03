.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;
.super Ljava/lang/Object;
.source "ModeMenuTexture.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmptySpaceTap(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onEmptySpaceTouched(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 1
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 6
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p1, p3, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p3, 0x13

    if-ne p3, p1, :cond_2

    .line 9
    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    if-ne p1, p3, :cond_3

    .line 10
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const p3, 0x7f12008b

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1, p3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 15
    :cond_3
    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setEnabled(Z)V

    return-void

    .line 16
    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    .line 17
    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 20
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 21
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    .line 22
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    .line 23
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 24
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    .line 25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 26
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    .line 27
    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 p2, 0x3e8

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    .line 28
    invoke-static {p0, p2, p1, p3}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    goto :goto_1

    .line 29
    :cond_6
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    if-eqz p1, :cond_9

    .line 30
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 31
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p1, p3, :cond_7

    return-void

    :cond_7
    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_8

    .line 32
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 33
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_9

    .line 34
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :cond_8
    const/16 p2, 0xbb8

    if-ne p1, p2, :cond_9

    .line 35
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    .line 36
    invoke-static {}, Lcom/motorola/camera/MotoFeedbackHelper;->createFeebackIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    sget-object v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;->MOTO_FEEDBACK:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo$LAUNCH_REQUEST_CODE;I)V

    .line 37
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 38
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_9

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 7

    .line 1
    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {p3}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 4
    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 5
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    .line 6
    iget-object p3, p3, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 7
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 8
    iput-object p2, p3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 9
    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 11
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->hasAnim()Z

    .line 12
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 13
    iget-object v2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->firstPoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 14
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 15
    iget-object v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 16
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    .line 17
    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    .line 18
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    const/4 v5, 0x0

    invoke-direct {p3, v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 19
    iput-object p3, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->movePoint:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 20
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->beginEdit()V

    .line 21
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 22
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 p3, 0x0

    .line 23
    invoke-virtual {p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    .line 24
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 25
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 26
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isSliderBg()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 27
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTouchTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothCircleTexture;

    .line 28
    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 30
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    .line 31
    iget-object p2, p2, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 33
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 36
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 37
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p2, 0x6

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    .line 39
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_4

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    .line 1
    instance-of p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz p1, :cond_1

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 3
    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mContinuousTextures:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_1
    return-void
.end method

.method public onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    return-void
.end method
