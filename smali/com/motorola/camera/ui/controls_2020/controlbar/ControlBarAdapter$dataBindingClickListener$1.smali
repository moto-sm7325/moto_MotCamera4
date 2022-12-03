.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;
.super Ljava/lang/Object;
.source "ControlBarAdapter.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;-><init>(Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener<",
        "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 4
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    if-eqz v1, :cond_4

    .line 5
    iget-boolean v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->locked:Z

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 7
    iget-boolean v2, v1, Lcom/motorola/camera/settings/Setting;->mEnabled:Z

    if-eqz v2, :cond_4

    .line 8
    iget-boolean v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->multiValuesEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    add-int/lit8 v2, v2, 0x1

    .line 10
    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    .line 11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 16
    rem-int/2addr v1, v2

    .line 17
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 18
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationSupported()Z

    move-result v3

    .line 21
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 22
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "PREVIOUS_VALUE"

    const-string v7, "SETTING"

    if-nez v4, :cond_1

    .line 23
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 24
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v8, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 27
    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "VALUE"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v8, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 31
    sget-object v9, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    .line 32
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v9, v4}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 34
    :cond_2
    iget-object v4, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 36
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 37
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    .line 38
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 39
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    .line 40
    sget-object v1, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne v0, v1, :cond_4

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->setting:Lcom/motorola/camera/settings/Setting;

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO_STABILIZATION"

    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    const-string v2, "MODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 50
    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v1, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;->EXIT_HDR10_CASE:Lcom/motorola/camera/fsm/camera/Constants$BannerSwitchCase;

    const-string v1, "BANNER_SWITCH"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$dataBindingClickListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    .line 54
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    .line 55
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_0
    return-void
.end method
