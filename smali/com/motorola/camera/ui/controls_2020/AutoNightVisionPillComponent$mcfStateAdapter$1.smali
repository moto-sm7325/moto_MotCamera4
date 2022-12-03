.class public final Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "AutoNightVisionPillComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 3

    const-string v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 6
    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent$mcfStateAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;

    .line 9
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mcfAutoNV:Z

    if-eqz p1, :cond_2

    .line 10
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->mIsControlPanelOpened:Z

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/AutoNightVisionPillComponent;->showPill()V

    goto :goto_2

    .line 12
    :cond_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 13
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f120036

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 14
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
