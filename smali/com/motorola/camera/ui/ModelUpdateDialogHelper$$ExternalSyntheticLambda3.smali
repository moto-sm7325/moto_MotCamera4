.class public final synthetic Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/arch/core/util/Function;

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 1
    iget-object v1, v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->mSql:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->mBinds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 3
    iget-object v3, v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->mBinds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_0
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 6
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 7
    :cond_1
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 8
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 9
    :cond_2
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 10
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_3
    instance-of v3, v1, [B

    if-eqz v3, :cond_4

    .line 12
    check-cast v1, [B

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    .line 13
    :cond_5
    invoke-interface {p0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const/high16 v0, 0x10000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onFirstFrame()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p0, p0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSplashIcon:Lcom/motorola/camera/ui/widgets/gl/textures/DrawableTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Ljava/lang/Long;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
