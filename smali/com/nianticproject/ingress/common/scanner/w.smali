.class final Lcom/nianticproject/ingress/common/scanner/w;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/w;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/w;->a:Z

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 1062
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 1063
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1067
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/w;->a:Z

    if-nez v0, :cond_1

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/w;->a:Z

    .line 1070
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->A()Lcom/nianticproject/ingress/common/m/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/e;->d()V

    .line 1071
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/w;->b()V

    .line 1097
    :cond_0
    :goto_0
    return-object v2

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/w;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->v()Z

    move-result v0

    .line 1077
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->A()Lcom/nianticproject/ingress/common/m/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/m/e;->b()Z

    move-result v1

    .line 1078
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1083
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/w;->b()V

    goto :goto_0

    .line 1088
    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->A()Lcom/nianticproject/ingress/common/m/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/w;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->i(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/et;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/x;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/x;-><init>(Lcom/nianticproject/ingress/common/scanner/w;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/et;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    goto :goto_0
.end method
