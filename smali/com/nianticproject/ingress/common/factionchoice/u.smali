.class final Lcom/nianticproject/ingress/common/factionchoice/u;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/u;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/u;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;

    move-result-object v0

    const-string/jumbo v1, "Choosing Jarvis..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/u;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/f/m;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/m;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 228
    return-void
.end method
