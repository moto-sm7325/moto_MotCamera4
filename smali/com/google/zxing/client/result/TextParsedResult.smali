.class public final Lcom/google/zxing/client/result/TextParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TextParsedResult.java"


# instance fields
.field public final language:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, p2}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    return-object p0
.end method
