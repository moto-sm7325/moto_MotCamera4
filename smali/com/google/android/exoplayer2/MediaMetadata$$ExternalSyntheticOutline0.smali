.class public final synthetic Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(ILandroid/os/Bundle;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaMetadata;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
