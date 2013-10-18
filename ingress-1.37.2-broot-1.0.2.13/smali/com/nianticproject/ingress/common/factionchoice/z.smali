.class final Lcom/nianticproject/ingress/common/factionchoice/z;
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
    .line 64
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/z;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/z;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/factionchoice/z;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->d(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/common/factionchoice/az;)V

    .line 68
    return-void
.end method
