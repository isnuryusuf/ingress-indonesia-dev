.class public Lcom/nianticproject/ingress/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/ui/z;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/ui/z;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    return-void
.end method

.method private static a(Ljava/lang/String;ILcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ad;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 523
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    invoke-static {p2, p3}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a(Lcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    new-instance v0, Lcom/nianticproject/ingress/ui/ad;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/ui/ad;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V

    .line 161
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;Z)V

    .line 146
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x11

    .line 130
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Lcom/nianticproject/ingress/ui/x;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez p2, :cond_0

    sget-object v2, Lcom/nianticproject/ingress/shared/plext/b;->b:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/plext/c;->c()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/plext/a;->b()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz p4, :cond_1

    invoke-virtual {p1, p4, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p5, :cond_2

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    :cond_2
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;ILjava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLjava/lang/String;Lcom/nianticproject/ingress/ui/ab;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;",
            "Lcom/nianticproject/ingress/shared/plext/f;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/ui/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    const-string/jumbo v2, "MarkupTextDecorator.decorateAndSetA"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 359
    if-nez p3, :cond_0

    .line 360
    invoke-static {p0, p1, p2}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 376
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 367
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 368
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/c;

    move-object v4, v0

    .line 369
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->a()Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/c;->b()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v4

    sget-object v6, Lcom/nianticproject/ingress/ui/aa;->b:[I

    invoke-virtual {v5}, Lcom/nianticproject/ingress/shared/plext/d;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    sget-object v6, Lcom/nianticproject/ingress/shared/plext/d;->a:Lcom/nianticproject/ingress/shared/plext/d;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/nianticproject/ingress/ui/z;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v7, "Treating unsupported MarkupType \"%s\" as TEXT"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v5, Lcom/nianticproject/ingress/ui/aa;->a:[I

    invoke-virtual {p4}, Lcom/nianticproject/ingress/shared/plext/f;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    :goto_2
    invoke-interface {v4}, Lcom/nianticproject/ingress/shared/plext/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    .line 367
    :cond_2
    :goto_3
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 369
    :pswitch_0
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/nianticproject/ingress/ui/x;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/ui/x;

    move-result-object v4

    invoke-static {v2, v3, v5, v4}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 375
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2

    .line 369
    :pswitch_1
    :try_start_2
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1, v5, v7}, Lcom/nianticproject/ingress/ui/z;->a(Ljava/lang/String;ILcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ad;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/nianticproject/ingress/ui/x;->b(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/ui/x;

    move-result-object v6

    invoke-static {v2, v3, v4, v6, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V

    goto :goto_3

    :pswitch_2
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1, v5, v7}, Lcom/nianticproject/ingress/ui/z;->a(Ljava/lang/String;ILcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ad;

    move-result-object v7

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a(Lcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-static {v6, v5, v0, v1}, Lcom/nianticproject/ingress/ui/x;->a(Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/ui/ab;)Lcom/nianticproject/ingress/ui/x;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v5, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V

    goto :goto_3

    :pswitch_3
    sget-object v5, Lcom/nianticproject/ingress/shared/plext/f;->a:Lcom/nianticproject/ingress/shared/plext/f;

    if-ne p4, v5, :cond_3

    sget-object v6, Lcom/nianticproject/ingress/ui/x;->n:Lcom/nianticproject/ingress/ui/x;

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->o:Lcom/nianticproject/ingress/ui/x;

    move-object v9, v5

    move-object v5, v6

    :goto_4
    move-object v0, v4

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;

    move-object v8, v0

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v4

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->f(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v6, Lcom/nianticproject/ingress/ui/ac;

    invoke-direct {v6, v8}, Lcom/nianticproject/ingress/ui/ac;-><init>(Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;)V

    :goto_5
    if-eqz v6, :cond_5

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v8}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v2 .. v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v9}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    goto/16 :goto_3

    :cond_3
    sget-object v6, Lcom/nianticproject/ingress/ui/x;->p:Lcom/nianticproject/ingress/ui/x;

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->q:Lcom/nianticproject/ingress/ui/x;

    move-object v9, v5

    move-object v5, v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    :pswitch_4
    if-eqz p6, :cond_2

    check-cast v4, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->v:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    goto/16 :goto_3

    :pswitch_5
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1, v5, v7}, Lcom/nianticproject/ingress/ui/z;->a(Ljava/lang/String;ILcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/ad;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/nianticproject/ingress/ui/x;->c(Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/ui/x;

    move-result-object v6

    invoke-static {v2, v3, v4, v6, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V

    goto/16 :goto_3

    :pswitch_6
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->a()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/ScoreMarkupArgSet;->c()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gez v4, :cond_6

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/nianticproject/ingress/ui/x;->h:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v9}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " "

    sget-object v9, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v9}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->k:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " - "

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->i:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " "

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->l:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    goto/16 :goto_3

    :cond_6
    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/nianticproject/ingress/ui/x;->i:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v9}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " "

    sget-object v9, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v9}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/nianticproject/ingress/ui/x;->l:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " - "

    sget-object v7, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/nianticproject/ingress/ui/x;->h:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    const-string/jumbo v4, " "

    sget-object v7, Lcom/nianticproject/ingress/ui/x;->u:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/ui/x;->k:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    goto/16 :goto_3

    :pswitch_7
    check-cast v4, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/nianticproject/ingress/ui/x;->w:Lcom/nianticproject/ingress/ui/x;

    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v5, v6, v7}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;Landroid/text/style/ClickableSpan;)V

    goto/16 :goto_3

    :cond_7
    sget-object v4, Lcom/nianticproject/ingress/ui/x;->w:Lcom/nianticproject/ingress/ui/x;

    invoke-static {v2, v3, v5, v4}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/nianticproject/ingress/ui/x;)V

    goto/16 :goto_3

    :pswitch_8
    sget-object v5, Lcom/nianticproject/ingress/ui/x;->s:Lcom/nianticproject/ingress/ui/x;

    goto/16 :goto_2

    :pswitch_9
    sget-object v5, Lcom/nianticproject/ingress/ui/x;->t:Lcom/nianticproject/ingress/ui/x;

    goto/16 :goto_2

    .line 373
    :cond_8
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLcom/nianticproject/ingress/ui/ab;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;",
            "Lcom/nianticproject/ingress/shared/plext/f;",
            "IZ",
            "Lcom/nianticproject/ingress/ui/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 428
    :try_start_0
    const-string/jumbo v0, "MarkupTextDecorator.decorateAndSetC"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 429
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 432
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 435
    if-nez p2, :cond_0

    .line 436
    invoke-static {p0, p1, v2}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 445
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    .line 441
    :try_start_1
    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;ILjava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLjava/lang/String;Lcom/nianticproject/ingress/ui/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static varargs a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/nianticproject/ingress/shared/plext/c;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 396
    :try_start_0
    const-string/jumbo v0, "MarkupTextDecorator.decorateAndSetB"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 397
    const v2, 0x106000b

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/ui/z;->a(Landroid/widget/TextView;Ljava/lang/String;ILjava/util/List;Lcom/nianticproject/ingress/shared/plext/f;IZLjava/lang/String;Lcom/nianticproject/ingress/ui/ab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    const-string/jumbo v0, "MarkupTextDecorator.hasAtPlayer"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 579
    const/4 v2, 0x0

    .line 581
    if-eqz p1, :cond_1

    .line 582
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/c;

    .line 583
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/c;->a()Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v1

    sget-object v4, Lcom/nianticproject/ingress/shared/plext/d;->d:Lcom/nianticproject/ingress/shared/plext/d;

    if-ne v1, v4, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/c;->b()Lcom/nianticproject/ingress/shared/plext/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    .line 585
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/c;->a()Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;->a(Lcom/nianticproject/ingress/shared/plext/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 597
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
