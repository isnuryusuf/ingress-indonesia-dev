.class final Lcom/nianticproject/ingress/common/missions/ah;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ah;->a:Lcom/nianticproject/ingress/common/missions/af;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ah;->a:Lcom/nianticproject/ingress/common/missions/af;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/ck;->c:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 100
    return-void
.end method
