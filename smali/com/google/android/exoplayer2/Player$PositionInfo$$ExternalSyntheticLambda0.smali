.class public final synthetic Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE$com$google$android$exoplayer2$trackselection$DefaultTrackSelector$SelectionOverride$$InternalSyntheticLambda$0$58ba44da0bca1c41897a432368546e8b82c97308da8929dd005f4d01282bbb0d$0:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$trackselection$DefaultTrackSelector$SelectionOverride$$InternalSyntheticLambda$0$58ba44da0bca1c41897a432368546e8b82c97308da8929dd005f4d01282bbb0d$0:Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Player$PositionInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 3
    invoke-static {v3}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/exoplayer2/MediaItem;

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v0, 0x4

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const/4 v0, 0x5

    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/4 v0, 0x6

    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/Player$PositionInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/Player$PositionInfo;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v0

    .line 11
    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    invoke-static {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    .line 14
    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v2, v0, v6, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
