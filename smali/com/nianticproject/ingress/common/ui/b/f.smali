.class public final Lcom/nianticproject/ingress/common/ui/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/h;

.field private final b:Lcom/nianticproject/ingress/common/w/h;

.field private final c:Lcom/nianticproject/ingress/common/w/h;

.field private final d:Lcom/nianticproject/ingress/common/ui/b/j;

.field private final e:Lcom/nianticproject/ingress/common/w/b;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/b/j;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/g;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/g;-><init>(Lcom/nianticproject/ingress/common/ui/b/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->a:Lcom/nianticproject/ingress/common/w/h;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/h;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/h;-><init>(Lcom/nianticproject/ingress/common/ui/b/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->b:Lcom/nianticproject/ingress/common/w/h;

    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/b/i;-><init>(Lcom/nianticproject/ingress/common/ui/b/f;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->c:Lcom/nianticproject/ingress/common/w/h;

    .line 102
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/j;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->d:Lcom/nianticproject/ingress/common/ui/b/j;

    .line 103
    invoke-static {}, Lcom/nianticproject/ingress/common/w/b;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/c;->a()Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/f;->a:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/f;->a:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/ui/b/a;->b:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/f;->b:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/f;->b:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/ui/b/a;->c:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/f;->c:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/f;->b:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/ui/b/a;->e:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/f;->a:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/f;->c:Lcom/nianticproject/ingress/common/w/h;

    sget-object v2, Lcom/nianticproject/ingress/common/ui/b/a;->d:Lcom/nianticproject/ingress/common/w/f;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/b/f;->b:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/c;->b()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->e:Lcom/nianticproject/ingress/common/w/b;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->f:Z

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/b/f;)Lcom/nianticproject/ingress/common/ui/b/j;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->d:Lcom/nianticproject/ingress/common/ui/b/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/w/d;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->f:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->e:Lcom/nianticproject/ingress/common/w/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/b;->b()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->f:Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/f;->e:Lcom/nianticproject/ingress/common/w/b;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 121
    return-void
.end method
