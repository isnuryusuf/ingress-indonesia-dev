.class final Lcom/nianticproject/ingress/common/scanner/modes/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/itemupgrade/p;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/at;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/at;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/av;->a:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/at;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/av;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/at;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V
    .locals 1
    .parameter

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/av;->a:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/scanner/modes/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/av;->a:Lcom/nianticproject/ingress/common/scanner/modes/at;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/at;->a(Lcom/nianticproject/ingress/common/scanner/modes/at;)Lcom/nianticproject/ingress/common/scanner/modes/aw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/aw;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;)V

    .line 853
    :cond_0
    return-void
.end method
