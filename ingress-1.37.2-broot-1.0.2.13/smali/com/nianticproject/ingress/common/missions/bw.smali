.class final Lcom/nianticproject/ingress/common/missions/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/factionchoice/ai;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bw;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bw;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->i(Lcom/nianticproject/ingress/common/missions/bp;)V

    .line 469
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bw;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->j(Lcom/nianticproject/ingress/common/missions/bp;)V

    .line 470
    return-void
.end method
