.class public final Lkotlinx/coroutines/channels/ChannelKt;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,140:1\n80#1,11:141\n103#1:152\n80#1,6:153\n104#1,2:159\n90#1:161\n86#1,3:162\n31#1,5:165\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n103#1:141,11\n115#1:152\n115#1:153,6\n115#1:159,2\n115#1:161\n115#1:162,3\n128#1:165,5\n*E\n"
.end annotation


# direct methods
.method public static Channel$default(IILkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/Channel;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 v0, p3, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    const/4 p3, -0x2

    if-eq p0, p3, :cond_a

    const/4 p3, -0x1

    if-eq p0, p3, :cond_7

    if-eqz p0, :cond_5

    const p3, 0x7fffffff

    if-eq p0, p3, :cond_4

    if-ne p0, v2, :cond_3

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 1
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 2
    :cond_3
    new-instance p3, Lkotlinx/coroutines/channels/ArrayChannel;

    invoke-direct {p3, p0, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    move-object p0, p3

    goto :goto_0

    .line 3
    :cond_4
    new-instance p0, Lkotlinx/coroutines/channels/LinkedListChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/LinkedListChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    .line 4
    new-instance p0, Lkotlinx/coroutines/channels/RendezvousChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/RendezvousChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 5
    :cond_6
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_7
    if-ne p1, v2, :cond_8

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    .line 6
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedChannel;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 7
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_a
    new-instance p0, Lkotlinx/coroutines/channels/ArrayChannel;

    if-ne p1, v2, :cond_b

    .line 9
    sget-object p3, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v2, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 11
    :cond_b
    invoke-direct {p0, v2, p1, p2}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(IILkotlin/jvm/functions/Function1;)V

    :goto_0
    return-object p0
.end method
