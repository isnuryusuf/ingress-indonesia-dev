.class final Lcom/nianticproject/ingress/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/nianticproject/ingress/service/NemesisService;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/service/NemesisService;Ljava/lang/String;Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/nianticproject/ingress/service/e;->e:Lcom/nianticproject/ingress/service/NemesisService;

    iput-object p2, p0, Lcom/nianticproject/ingress/service/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/service/e;->b:Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    iput p4, p0, Lcom/nianticproject/ingress/service/e;->c:I

    iput-object p5, p0, Lcom/nianticproject/ingress/service/e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 830
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->z()Lcom/nianticproject/ingress/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/service/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/service/e;->b:Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    iget v3, p0, Lcom/nianticproject/ingress/service/e;->c:I

    iget-object v4, p0, Lcom/nianticproject/ingress/service/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/i/b;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/portal/PortalImagePage;ILjava/lang/String;)Z

    .line 832
    return-void
.end method
