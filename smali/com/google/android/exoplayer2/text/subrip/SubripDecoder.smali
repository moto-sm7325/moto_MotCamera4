.class public final Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SubripDecoder.java"


# static fields
.field public static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;


# instance fields
.field public final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SubripDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method public static getFractionalPositionForAnchorType(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    return p0
.end method

.method public static parseTimecode(Ljava/util/regex/Matcher;I)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v1

    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v1

    mul-long/2addr v7, v3

    add-long/2addr v7, v5

    add-int/lit8 v0, p1, 0x3

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    add-long/2addr v0, v7

    add-int/lit8 p1, p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    mul-long/2addr v0, v3

    return-wide v0
.end method


# virtual methods
.method public decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "SubripDecoder"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/util/LongArray;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/util/LongArray;-><init>(ILcom/google/android/material/R$dimen$$IA$1;)V

    .line 3
    new-instance v6, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct {v6, v7, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    .line 4
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "Unexpected end"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 9
    :cond_1
    sget-object v8, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v7, 0x1

    .line 11
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    const/4 v9, 0x6

    .line 12
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/google/android/exoplayer2/util/LongArray;->add(J)V

    .line 13
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 15
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 16
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 17
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 18
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_2
    iget-object v10, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 21
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v13, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v13, v4

    .line 23
    :goto_2
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 24
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 25
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v15

    sub-int/2addr v15, v13

    .line 27
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v5, v15, v14

    const-string v9, ""

    .line 28
    invoke-virtual {v12, v15, v5, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v13, v14

    const/4 v5, 0x0

    const/4 v9, 0x6

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v9, 0x6

    goto :goto_1

    .line 32
    :cond_4
    iget-object v5, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    move v5, v4

    .line 33
    :goto_3
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 34
    iget-object v8, v0, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "\\{\\\\an[1-9]\\}"

    .line 35
    invoke-virtual {v8, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/4 v12, 0x0

    const v21, -0x800001

    const/high16 v24, -0x80000000

    const/16 v22, 0x0

    const/high16 v23, -0x1000000

    const/16 v25, 0x0

    if-nez v8, :cond_7

    .line 36
    new-instance v5, Lcom/google/android/exoplayer2/text/Cue;

    move-object v8, v5

    const/16 v26, 0x0

    const/high16 v15, -0x80000000

    move/from16 v17, v15

    move/from16 v24, v15

    move/from16 v18, v15

    move v14, v15

    const/16 v25, 0x0

    move-object v10, v12

    move-object v11, v12

    move/from16 v13, v21

    move/from16 v16, v21

    move/from16 v19, v21

    move/from16 v20, v21

    invoke-direct/range {v8 .. v26}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    move-object/from16 v28, v3

    move-object/from16 v27, v6

    goto/16 :goto_b

    .line 37
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v10, "{\\an9}"

    const-string/jumbo v11, "{\\an8}"

    const-string/jumbo v12, "{\\an7}"

    const-string/jumbo v13, "{\\an6}"

    const-string/jumbo v14, "{\\an5}"

    const-string/jumbo v15, "{\\an4}"

    const-string/jumbo v4, "{\\an3}"

    const-string/jumbo v7, "{\\an2}"

    const-string/jumbo v0, "{\\an1}"

    const/16 v16, -0x1

    move-object/from16 v27, v6

    const/4 v6, 0x2

    const/16 v20, 0x8

    const/16 v21, 0x7

    sparse-switch v5, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x5

    goto :goto_6

    :sswitch_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move/from16 v5, v20

    goto :goto_6

    :sswitch_2
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_6

    :sswitch_3
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move/from16 v5, v21

    goto :goto_6

    :sswitch_5
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    goto :goto_6

    :sswitch_8
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v5, v16

    :goto_6
    move-object/from16 v28, v3

    if-eqz v5, :cond_a

    const/4 v3, 0x1

    if-eq v5, v3, :cond_a

    if-eq v5, v6, :cond_a

    const/4 v3, 0x3

    if-eq v5, v3, :cond_9

    const/4 v3, 0x4

    if-eq v5, v3, :cond_9

    const/4 v3, 0x5

    if-eq v5, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    move v3, v6

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 38
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    goto :goto_9

    :sswitch_a
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_9

    :sswitch_b
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_9

    :sswitch_c
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v20

    goto :goto_9

    :sswitch_d
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v21

    goto :goto_9

    :sswitch_e
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    goto :goto_9

    :sswitch_f
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_9

    :sswitch_10
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_9

    :sswitch_11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v0, v16

    :goto_9
    if-eqz v0, :cond_d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    if-eq v0, v6, :cond_d

    const/4 v5, 0x3

    if-eq v0, v5, :cond_c

    const/4 v5, 0x4

    if-eq v0, v5, :cond_c

    const/4 v5, 0x5

    if-eq v0, v5, :cond_c

    move v15, v4

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    goto :goto_a

    :cond_d
    move v15, v6

    .line 39
    :goto_a
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v16

    .line 40
    invoke-static {v15}, Lcom/google/android/exoplayer2/text/subrip/SubripDecoder;->getFractionalPositionForAnchorType(I)F

    move-result v13

    const/4 v14, 0x0

    .line 41
    new-instance v5, Lcom/google/android/exoplayer2/text/Cue;

    move-object v8, v5

    const/16 v26, 0x0

    const/4 v11, 0x0

    move-object v12, v11

    move-object v10, v11

    const v21, -0x800001

    move/from16 v19, v21

    move/from16 v20, v21

    const/16 v22, 0x0

    const/high16 v23, -0x1000000

    move/from16 v17, v3

    move/from16 v18, v24

    invoke-direct/range {v8 .. v26}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    .line 42
    :goto_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/google/android/exoplayer2/text/Cue;->EMPTY:Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_e
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    const-string v0, "Skipping invalid timing: "

    .line 44
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 45
    :goto_c
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_0
    move-object/from16 v28, v3

    move-object/from16 v27, v6

    const-string v0, "Skipping invalid index: "

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 47
    :goto_d
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v6, v27

    move-object/from16 v3, v28

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_11
    :goto_f
    move-object/from16 v28, v3

    move v0, v4

    new-array v0, v0, [Lcom/google/android/exoplayer2/text/Cue;

    .line 48
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v1, v28

    .line 49
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v2, [J

    iget v1, v1, Lcom/google/android/exoplayer2/util/LongArray;->size:I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 50
    new-instance v2, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/text/subrip/SubripSubtitle;-><init>([Lcom/google/android/exoplayer2/text/Cue;[J)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
