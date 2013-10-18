.class final Lcom/nianticproject/ingress/service/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/nianticproject/ingress/service/NemesisService;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/service/NemesisService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/nianticproject/ingress/service/f;->d:Lcom/nianticproject/ingress/service/NemesisService;

    iput-object p2, p0, Lcom/nianticproject/ingress/service/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/service/f;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nianticproject/ingress/service/f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 862
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/nianticproject/ingress/service/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/service/f;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/service/f;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 864
    return-void
.end method
