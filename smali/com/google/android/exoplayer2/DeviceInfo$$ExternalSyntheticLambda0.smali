.class public final synthetic Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE$com$google$android$exoplayer2$source$ads$AdPlaybackState$$InternalSyntheticLambda$0$b4d191d6ed0746190e83fc4a141f6e17740c02650e1c29845d2b9bf92e760ba9$0:Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$source$ads$AdPlaybackState$$InternalSyntheticLambda$0$b4d191d6ed0746190e83fc4a141f6e17740c02650e1c29845d2b9bf92e760ba9$0:Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 11

    iget p0, p0, Lcom/google/android/exoplayer2/DeviceInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/DeviceInfo;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/DeviceInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/DeviceInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    return-object v1

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v2, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-object v5, p0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 8
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 9
    sget-object v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticLambda1;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 10
    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 p0, 0x3

    .line 11
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 p0, 0x4

    .line 12
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 13
    new-instance p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;JJI)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
