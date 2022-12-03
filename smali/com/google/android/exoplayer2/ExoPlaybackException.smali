.class public final Lcom/google/android/exoplayer2/ExoPlaybackException;
.super Lcom/google/android/exoplayer2/PlaybackException;
.source "ExoPlaybackException.java"


# instance fields
.field public final isRecoverable:Z

.field public final mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

.field public final rendererFormat:Lcom/google/android/exoplayer2/Format;

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final rendererName:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V
    .locals 13

    move v4, p1

    move-object/from16 v5, p5

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string v0, "Remote error"

    :goto_0
    move/from16 v6, p6

    goto :goto_1

    .line 23
    :cond_1
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static/range {p8 .. p8}, Lcom/google/android/exoplayer2/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v5, v2}, Landroidx/work/R$bool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", format_supported="

    invoke-static {v3, v0, v2, v1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move/from16 v6, p6

    const-string v0, "Source error"

    :goto_1
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const-string v3, "null"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, ": "

    invoke-static {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    const/4 v9, 0x0

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    .line 28
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Landroid/os/Bundle;)V

    const/16 v0, 0x3e9

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/16 v0, 0x3ea

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    .line 6
    sget-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    const/16 v1, 0x3ec

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    const/16 v0, 0x3ed

    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    const/16 v0, 0x3ee

    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 14
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 15
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 16
    iput v7, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    move-object v0, p5

    .line 17
    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    move v0, p6

    .line 18
    iput v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    move-object/from16 v0, p7

    .line 19
    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    move/from16 v0, p8

    .line 20
    iput v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    move-object/from16 v0, p9

    .line 21
    iput-object v0, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaPeriodId;

    .line 22
    iput-boolean v8, v6, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    return-void
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public copyWithMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaPeriodId;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 14

    .line 1
    new-instance v13, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    iget-wide v10, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/MediaPeriodId;JZ)V

    return-object v13
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/PlaybackException;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3ea

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3eb

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3ec

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toNullableBundle(Lcom/google/android/exoplayer2/Bundleable;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0x3ed

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererFormatSupport:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3ee

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
