.class final Lcom/nianticproject/ingress/common/missions/tutorial/y;
.super Lcom/nianticproject/ingress/common/ui/elements/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/x;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/y;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/y;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->c(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 148
    return-void
.end method
