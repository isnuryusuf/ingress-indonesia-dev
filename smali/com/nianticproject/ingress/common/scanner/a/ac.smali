.class final Lcom/nianticproject/ingress/common/scanner/a/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/a/u;

.field private final b:J

.field private final c:Lcom/nianticproject/ingress/common/q/c;

.field private d:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/u;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 72
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->a:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->b:J

    .line 74
    invoke-static {p2, p3}, Lcom/nianticproject/ingress/common/q/c;->a(J)Lcom/nianticproject/ingress/common/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->c:Lcom/nianticproject/ingress/common/q/c;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->d:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->e:J

    .line 77
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->f:Z

    .line 78
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->g:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->h:J

    .line 80
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->i:J

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/u;JB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/a/ac;-><init>(Lcom/nianticproject/ingress/common/scanner/a/u;J)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/q/c;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->c:Lcom/nianticproject/ingress/common/q/c;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/ac;Lcom/nianticproject/ingress/common/scanner/a/n;)Lcom/nianticproject/ingress/common/scanner/a/n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->d:Lcom/nianticproject/ingress/common/scanner/a/n;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->i:J

    return-wide p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/a/ac;)Lcom/nianticproject/ingress/common/scanner/a/n;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->d:Lcom/nianticproject/ingress/common/scanner/a/n;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/a/ac;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/a/ac;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->h:J

    return-wide p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/a/ac;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->d:Lcom/nianticproject/ingress/common/scanner/a/n;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->h:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->i:J

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/a/ac;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/a/ac;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->b:J

    return-wide v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/a/ac;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->h:J

    return-wide v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/a/ac;)J
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->i:J

    return-wide v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/a/ac;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->g:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/q/c;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/ac;->c:Lcom/nianticproject/ingress/common/q/c;

    return-object v0
.end method
