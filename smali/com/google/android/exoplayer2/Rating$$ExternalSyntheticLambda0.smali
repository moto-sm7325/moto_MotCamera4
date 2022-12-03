.class public final synthetic Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 5

    const/16 p0, 0x24

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_9

    const/high16 v4, -0x40800000    # -1.0f

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_3

    const/4 v4, 0x3

    if-ne p0, v4, :cond_2

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 5
    invoke-static {v3}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Lcom/google/android/exoplayer2/ThumbRating;

    .line 7
    invoke-static {v2}, Lcom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ThumbRating;-><init>(Z)V

    goto/16 :goto_3

    .line 8
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ThumbRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ThumbRating;-><init>()V

    goto/16 :goto_3

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x1f

    const-string v1, "Unknown RatingType: "

    invoke-static {v0, v1, p0}, Landroidx/preference/R$layout$$ExternalSyntheticOutline0;->m(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_4

    move v0, v3

    .line 11
    :cond_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 12
    invoke-static {v3}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/StarRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v4

    if-nez v0, :cond_5

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/StarRating;-><init>(I)V

    goto :goto_1

    .line 15
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/StarRating;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/StarRating;-><init>(IF)V

    move-object p0, v0

    goto :goto_3

    .line 16
    :cond_6
    invoke-static {v0}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_7

    move v0, v3

    .line 17
    :cond_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 18
    invoke-static {v3}, Lcom/google/android/exoplayer2/PercentageRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float p1, p0, v4

    if-nez p1, :cond_8

    .line 19
    new-instance p0, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>()V

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/PercentageRating;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/PercentageRating;-><init>(F)V

    :goto_1
    move-object p0, p1

    goto :goto_3

    .line 20
    :cond_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_a

    move p0, v3

    goto :goto_2

    :cond_a
    move p0, v0

    .line 21
    :goto_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 22
    invoke-static {v3}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 23
    new-instance p0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-static {v2}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/HeartRating;-><init>(Z)V

    goto :goto_3

    .line 24
    :cond_b
    new-instance p0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/HeartRating;-><init>()V

    :goto_3
    return-object p0
.end method
