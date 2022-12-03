.class public final Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1486:1\n1#2:1487\n*E\n"
.end annotation


# instance fields
.field public final synthetic $delimitersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $ignoreCase:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v6, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    iget-boolean p0, p0, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 v0, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    .line 4
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, p0, p2, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 8
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 9
    :cond_1
    new-instance v1, Lkotlin/ranges/IntRange;

    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v1, p2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 10
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 11
    iget v8, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 12
    iget v9, v1, Lkotlin/ranges/IntProgression;->step:I

    if-lez v9, :cond_3

    if-le p2, v8, :cond_4

    :cond_3
    if-gez v9, :cond_10

    if-gt v8, p2, :cond_10

    :cond_4
    :goto_0
    add-int v10, p2, v9

    .line 13
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_6
    move-object v12, v7

    :goto_1
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 16
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-ne p2, v8, :cond_8

    goto :goto_4

    :cond_8
    move p2, v10

    goto :goto_0

    .line 17
    :cond_9
    iget v8, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 18
    iget v9, v1, Lkotlin/ranges/IntProgression;->step:I

    if-lez v9, :cond_a

    if-le p2, v8, :cond_b

    :cond_a
    if-gez v9, :cond_10

    if-gt v8, p2, :cond_10

    :cond_b
    :goto_2
    add-int v10, p2, v9

    .line 19
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move-object v2, p1

    move v3, p2

    move v5, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_d
    move-object v12, v7

    :goto_3
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 22
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    if-ne p2, v8, :cond_f

    goto :goto_4

    :cond_f
    move p2, v10

    goto :goto_2

    :cond_10
    :goto_4
    move-object p2, v7

    :goto_5
    if-nez p2, :cond_11

    goto :goto_6

    .line 23
    :cond_11
    iget-object p0, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 24
    iget-object p1, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 26
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    return-object v7
.end method
