.class final Lcom/nianticproject/ingress/common/factionchoice/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/y;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/y;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->o_()V

    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/y;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/b;->b()V

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const-string/jumbo v0, "startFactionChoice"

    return-object v0
.end method
