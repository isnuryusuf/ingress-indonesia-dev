.class final Lcom/nianticproject/ingress/common/missions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cs;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/c;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/cr;)V
    .locals 2
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/c;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/c;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/a;->h(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/aa;->c:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/missions/cr;Lcom/nianticproject/ingress/common/c/bs;)V

    .line 445
    return-void
.end method
