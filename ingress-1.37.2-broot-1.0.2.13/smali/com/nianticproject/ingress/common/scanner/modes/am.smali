.class final Lcom/nianticproject/ingress/common/scanner/modes/am;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ah;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/am;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/am;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string/jumbo v0, "CheckInRangeListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/am;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/am;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/scanner/modes/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ap;->a(Lcom/nianticproject/ingress/common/scanner/modes/ap;)V

    .line 231
    return-void
.end method
