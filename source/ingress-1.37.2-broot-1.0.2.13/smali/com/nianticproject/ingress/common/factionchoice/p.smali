.class final Lcom/nianticproject/ingress/common/factionchoice/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cs;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/o;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/o;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/p;->a:Lcom/nianticproject/ingress/common/factionchoice/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/cr;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/p;->a:Lcom/nianticproject/ingress/common/factionchoice/o;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/factionchoice/o;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->k:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {p1, v0, v1}, Lcom/nianticproject/ingress/common/missions/cr;->a(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/bs;)V

    .line 55
    return-void
.end method
