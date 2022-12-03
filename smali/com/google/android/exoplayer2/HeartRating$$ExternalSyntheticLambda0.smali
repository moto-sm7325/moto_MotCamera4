.class public final synthetic Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$5a2eb97a3059949373295ce4f42c1bbb89035da59b01d4f8ae1d0a0ba2f38c9f$0:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$motorola$camera$fsm$camera$states$runnables$WaitForMemoryRunnable$$InternalSyntheticLambda$1$18adf87a13d0257b80eeb55715c4ae84b2d499b9bcc101ea3ac319e5b0cd2f12$0:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;->INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$5a2eb97a3059949373295ce4f42c1bbb89035da59b01d4f8ae1d0a0ba2f38c9f$0:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$fsm$camera$states$runnables$WaitForMemoryRunnable$$InternalSyntheticLambda$1$18adf87a13d0257b80eeb55715c4ae84b2d499b9bcc101ea3ac319e5b0cd2f12$0:Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 2

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p0

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/HeartRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/HeartRating;-><init>(Z)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/HeartRating;-><init>()V

    :goto_1
    return-object v0
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    return-void
.end method
