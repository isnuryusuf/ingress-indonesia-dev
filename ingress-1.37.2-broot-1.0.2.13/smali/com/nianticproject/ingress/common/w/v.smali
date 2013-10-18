.class public Lcom/nianticproject/ingress/common/w/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Lcom/google/a/a/bb;

.field private static final g:Lcom/google/a/a/ab;

.field private static final h:Lcom/google/a/a/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 19
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/w/v;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 57
    const-string/jumbo v0, "^((?:(?:(?:http(?:s)?):)?//)?(?:(?:commondata)?storage\\.googleapis\\.com/)?(?:[\\w-_]+\\.)?panoramio\\.com/photos/)(original|medium|small|thumbnail|square|mini_square)(/[^/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->b:Ljava/util/regex/Pattern;

    .line 77
    const-string/jumbo v0, "^((?:(?:(?:http(?:s)?):)?//)?(?:(?:(?:lh|gp)\\d\\.(?:ggpht|googleusercontent|google)\\.com)|(?:\\d\\.bp\\.blogspot\\.com)|(?:bp\\d\\.blogger\\.com)|(?:db\\d\\.googleusercontent\\.cn))/(?:(?:public|image|proxy)/)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->c:Ljava/util/regex/Pattern;

    .line 85
    const-string/jumbo v0, "^(.*=[^=]*)(s\\d+)([^=]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->d:Ljava/util/regex/Pattern;

    .line 91
    const-string/jumbo v0, "^(.*)(s\\d+)(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->e:Ljava/util/regex/Pattern;

    .line 94
    invoke-static {v2}, Lcom/google/a/a/bb;->a(C)Lcom/google/a/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/bb;->a()Lcom/google/a/a/bb;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->f:Lcom/google/a/a/bb;

    .line 95
    invoke-static {v2}, Lcom/google/a/a/ab;->a(C)Lcom/google/a/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ab;->a()Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->g:Lcom/google/a/a/ab;

    .line 97
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/a/a/bb;->a(C)Lcom/google/a/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/bb;->a()Lcom/google/a/a/bb;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/w/v;->h:Lcom/google/a/a/bb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object p0

    .line 126
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/common/w/v;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const/16 v0, 0xb4

    if-gt p1, v0, :cond_2

    const-string/jumbo v0, "small"

    .line 130
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_2
    const-string/jumbo v0, "medium"

    goto :goto_1

    .line 137
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/common/w/v;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-gez p1, :cond_5

    move p1, v1

    :cond_4
    :goto_2
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    sget-object v3, Lcom/nianticproject/ingress/common/w/v;->h:Lcom/google/a/a/bb;

    invoke-virtual {v3, v0}, Lcom/google/a/a/bb;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_6

    const-string/jumbo v3, "%s%s=s%d"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object v0, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object p0, v0

    goto :goto_0

    :cond_5
    const/16 v3, 0x640

    if-le p1, v3, :cond_4

    const/16 p1, 0x640

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/nianticproject/ingress/common/w/v;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string/jumbo v3, "%s-s%d"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/nianticproject/ingress/common/w/v;->f:Lcom/google/a/a/bb;

    invoke-virtual {v3, v0}, Lcom/google/a/a/bb;->a(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, ""

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_5
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/nianticproject/ingress/common/w/v;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-interface {v3, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/w/v;->g:Lcom/google/a/a/ab;

    invoke-virtual {v1, v3}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, ""

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_1
    const-string/jumbo v0, ""

    invoke-interface {v3, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    const-string/jumbo v0, "s%d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
