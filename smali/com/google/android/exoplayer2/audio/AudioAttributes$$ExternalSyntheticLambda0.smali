.class public final synthetic Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# static fields
.field public static final synthetic INSTANCE$com$motorola$camera$ui$widgets$AlertPopup$StorageFullPopupData$$InternalSyntheticLambda$2$82e32cad5265b0c5f85790d99ad9be5c3c9bb7cb089c2fd71d05d193fd2728c8$0:Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$ui$widgets$AlertPopup$StorageFullPopupData$$InternalSyntheticLambda$2$82e32cad5265b0c5f85790d99ad9be5c3c9bb7cb089c2fd71d05d193fd2728c8$0:Lcom/google/android/exoplayer2/audio/AudioAttributes$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 8

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p0

    :goto_1
    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v5, v0

    const/4 v0, 0x4

    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    :cond_4
    move v6, p0

    .line 11
    new-instance p0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIIIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object p0
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 3

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0x9600000

    const-string v2, "android.os.storage.extra.REQUESTED_BYTES"

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x10000000

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
