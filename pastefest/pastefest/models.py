from sqlalchemy import (
    Column,
    Integer,
    Text,
    )

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    )

from zope.sqlalchemy import ZopeTransactionExtension

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()

class Paste(Base):
    __tablename__ = 'pastes'
    id = Column(Integer, primary_key=True)
    raw = Column(Text)

    def __init__(self, raw):
        self.raw = raw

    def html(self, linenos='inline'):
        from pygments import highlight
        from pygments.lexers import get_lexer_by_name, guess_lexer
        from pygments.formatters import HtmlFormatter

        if linenos != 'inline':
            linenos = False

        lexer = guess_lexer(self.raw)
        formatter = HtmlFormatter(linenos=linenos, cssclass="highlight")
        return highlight(self.raw, lexer, formatter)

