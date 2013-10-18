.class final Lcom/nianticproject/ingress/cl;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/nianticproject/ingress/cl;->e:Lcom/nianticproject/ingress/NemesisApplication;

    iput-object p2, p0, Lcom/nianticproject/ingress/cl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/cl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/cl;->c:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/cl;->d:J

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/cl;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->a(Lcom/nianticproject/ingress/NemesisApplication;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/cl;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisApplication;->b(Lcom/nianticproject/ingress/NemesisApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/cl;->e:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisApplication;->h()Lcom/google/analytics/tracking/android/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/cl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/cl;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nianticproject/ingress/cl;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nianticproject/ingress/cl;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
