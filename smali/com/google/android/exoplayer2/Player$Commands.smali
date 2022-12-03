.class public final Lcom/google/android/exoplayer2/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/Player$Commands;


# instance fields
.field public final flags:Lcom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/FlagSet$Builder;->build()Lcom/google/android/exoplayer2/util/FlagSet;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V

    .line 3
    sput-object v1, Lcom/google/android/exoplayer2/Player$Commands;->EMPTY:Lcom/google/android/exoplayer2/Player$Commands;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/FlagSet;Lcom/google/android/exoplayer2/Player$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/Player$Commands;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Player$Commands;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/Player$Commands;->flags:Lcom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x24

    .line 5
    invoke-static {v2, p0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
