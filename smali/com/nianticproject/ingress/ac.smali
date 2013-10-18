.class final Lcom/nianticproject/ingress/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->a:Ljava/lang/Boolean;

    .line 53
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->b:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->c:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->d:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->e:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->f:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->g:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->h:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->i:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->j:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->k:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->l:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->m:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/nianticproject/ingress/ac;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nianticproject/ingress/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->a:Ljava/lang/Boolean;

    .line 87
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->b:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;
    .locals 15

    .prologue
    .line 68
    new-instance v0, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    iget-object v1, p0, Lcom/nianticproject/ingress/ac;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/nianticproject/ingress/ac;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nianticproject/ingress/ac;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/ac;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/ac;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/nianticproject/ingress/ac;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/nianticproject/ingress/ac;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/nianticproject/ingress/ac;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/nianticproject/ingress/ac;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/nianticproject/ingress/ac;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/nianticproject/ingress/ac;->k:Ljava/lang/String;

    iget-object v12, p0, Lcom/nianticproject/ingress/ac;->l:Ljava/lang/String;

    iget-object v13, p0, Lcom/nianticproject/ingress/ac;->m:Ljava/lang/String;

    iget-object v14, p0, Lcom/nianticproject/ingress/ac;->n:Ljava/lang/String;

    invoke-direct/range {v0 .. v14}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->c:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->d:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->e:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->f:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->g:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->h:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->i:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->j:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->k:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->l:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->m:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lcom/nianticproject/ingress/ac;
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nianticproject/ingress/ac;->n:Ljava/lang/String;

    .line 152
    return-object p0
.end method
