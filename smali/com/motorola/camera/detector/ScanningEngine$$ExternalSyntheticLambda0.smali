.class public final synthetic Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/ScanningEngine;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/jms/BgJobTransferService;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return v1

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    sget v0, Lcom/motorola/camera/fragments/ReportFragment;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {p0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetInvalidated()V

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    .line 9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    .line 10
    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v2, p1, v0}, Landroid/widget/SimpleCursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_2

    .line 13
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mAdapter:Landroid/widget/SimpleCursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p1, v3}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 19
    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 23
    check-cast p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 24
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v2, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    .line 26
    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v2, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 27
    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    .line 28
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v2, :cond_8

    .line 29
    invoke-interface {v2, p1}, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_3

    .line 30
    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;

    if-eqz v2, :cond_a

    .line 31
    invoke-interface {v2, p1}, Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;->onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    goto :goto_4

    .line 32
    :cond_b
    monitor-exit v0

    goto :goto_6

    .line 33
    :cond_c
    :goto_5
    monitor-exit v0

    goto :goto_6

    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    move v1, v3

    :cond_e
    :goto_6
    return v1

    .line 35
    :goto_7
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mInflationStates:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v1, :cond_13

    if-eq p1, v4, :cond_12

    if-eq p1, v2, :cond_f

    goto/16 :goto_9

    .line 37
    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_9

    .line 38
    :cond_10
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 39
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 40
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_BACK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_9

    .line 41
    :cond_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    goto/16 :goto_9

    .line 42
    :cond_12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->onDestroy()V

    .line 43
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    .line 44
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    if-lez p1, :cond_15

    .line 46
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_9

    .line 48
    :cond_13
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)Lkotlin/Unit;

    .line 49
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 51
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_8

    .line 52
    :cond_14
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x200

    .line 53
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    const/16 v2, 0x8

    .line 54
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 56
    iput v3, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mUiOptionsOrig:I

    or-int/lit16 v3, v3, 0x100

    or-int/lit16 v3, v3, 0x400

    or-int/lit8 v3, v3, 0x4

    or-int/lit16 v3, v3, 0x1000

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 59
    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mNavBarColorOrig:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f060354

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 61
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 63
    :goto_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    .line 64
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_15
    :goto_9
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
