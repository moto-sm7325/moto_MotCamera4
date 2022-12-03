.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InactivityComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    .line 3
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v3

    .line 5
    new-instance v5, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    iput-object v5, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    .line 6
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 7
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/FlagSet;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
